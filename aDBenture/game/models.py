from django.db import models, connection

# Create your models here.

def testquery(self):
    with connection.cursor() as cursor:
        cursor.execute("SELECT * FROM person")
        #cursor.execute("SELECT foo FROM bar WHERE baz = %s", [self.baz])
        row = cursor.fetchone()

    return row

class Data:
        managed = False

        db_table = 'LokiDB'