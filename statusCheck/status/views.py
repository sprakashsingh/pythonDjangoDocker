from django.shortcuts import render
from rest_framework import generics, mixins, status, viewsets, serializers
from datetime import datetime
# Create your views here.
from rest_framework.response import Response


class TagListAPIView(generics.ListAPIView):
    def list(self, request):
        serializer_data = datetime.now().second % 10
        print(serializer_data)
        serializer = serializers.Serializer({"value":serializer_data})
        stat = status.HTTP_200_OK
        print(serializer.data)
        if serializer_data%10 ==0:
            stat = status.HTTP_503_SERVICE_UNAVAILABLE

        return Response({
            'tags': serializer_data,
        }, status=stat)
