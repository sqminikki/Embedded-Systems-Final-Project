#!/usr/bin/env python3

# Test whether a client subscribed to a topic receives its own message sent to that topic.

from mosq_test_helper import *

def do_test(proto_ver):
    rc = 1
    mid = 530
    keepalive = 60
    connect_packet = mosq_test.gen_connect("subpub-qos1-test", keepalive=keepalive, proto_ver=proto_ver)
    connack_packet = mosq_test.gen_connack(rc=0, proto_ver=proto_ver)

    subscribe_packet = mosq_test.gen_subscribe(mid, "subpub/qos1", 1, proto_ver=proto_ver)
    suback_packet = mosq_test.gen_suback(mid, 1, proto_ver=proto_ver)

    mid = 300
    publish_packet = mosq_test.gen_publish("subpub/qos1", qos=1, mid=mid, payload="message", proto_ver=proto_ver)
    puback_packet = mosq_test.gen_puback(mid, proto_ver=proto_ver)

    mid = 1
    publish_packet2 = mosq_test.gen_publish("subpub/qos1", qos=1, mid=mid, payload="message", proto_ver=proto_ver)


    port = mosq_test.get_port()
    broker = mosq_test.start_broker(filename=os.path.basename(__file__), port=port)

    try:
        sock = mosq_test.do_client_connect(connect_packet, connack_packet, timeout=20, port=port)

        mosq_test.do_send_receive(sock, subscribe_packet, suback_packet, "suback")

        sock.send(publish_packet)
        mosq_test.receive_unordered(sock, puback_packet, publish_packet2, "puback/publish2")
        rc = 0

        sock.close()
    except mosq_test.TestError:
        pass
    finally:
        broker.terminate()
        broker.wait()
        (stdo, stde) = broker.communicate()
        if rc:
            print(stde.decode('utf-8'))
            print("proto_ver=%d" % (proto_ver))
            exit(rc)


do_test(proto_ver=4)
do_test(proto_ver=5)
exit(0)
