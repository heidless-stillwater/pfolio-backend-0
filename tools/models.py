from django.db import models


class Tag(models.Model):
    name = models.CharField(max_length=30)

    def __str__(self):
        return self.name


class Tool(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=200)
    link = models.CharField(max_length=250)
    blog = models.CharField(max_length=250, default='https://main--scrumming-it.netlify.app/posts/ruby-on-rails/')
    git = models.CharField(max_length=250, default='https://github.com/heidless-stillwater/')
    image = models.ImageField(upload_to='images')
    tags = models.ManyToManyField(Tag)

    def __str__(self):
        return self.name
