from django.db import models
from .validators import validate_file_extension


class DataScience(models.Model):
    name = models.CharField(max_length=100)
    icon = models.FileField(upload_to='icons', validators=[validate_file_extension])

    class Meta:
        verbose_name = 'DataScience'
        verbose_name_plural = 'DataSciences'

    def __str__(self):
        return self.name
