from django.db import models

# Create your models here.
class Task(models.Model):
    title_task = models.CharField(max_length=50)
    text_task = models.CharField(max_length=200)

    def __str__(self):
        return self.title_task