import celery


@celery.task(name="hello_world")
def hello_world():
    print("Hello world")
