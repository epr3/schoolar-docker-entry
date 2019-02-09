from flask import Flask
import pika

connection = pika.BlockingConnection(pika.ConnectionParameters('rabbitmq-server', 5672))
channel = connection.channel()
app = Flask(__name__)

def callback(ch, method, properties, body):
    print(" [x] Received %r" % body)

channel.queue_declare(queue='hello')
channel.basic_consume(callback,
                    queue='hello',
                    no_ack=True)
print(' [*] Waiting for messages. To exit press CTRL+C')
channel.start_consuming()

@app.route('/')
def hello_world():
    return 'Flask Dockerized'

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')
