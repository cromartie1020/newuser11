from django.db import models
import datetime

# Create your models here.

from django.contrib.auth.models import AbstractUser

class CustomUser(AbstractUser):
    pass

    def __str__(self):
        return self.email




