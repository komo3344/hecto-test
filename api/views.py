from rest_framework.views import APIView
from rest_framework.response import Response


class V1API(APIView):
    def get(self, request):
        return Response({'msg': 'v1 api'})


class V2API(APIView):
    def get(self, request):
        return Response({'msg': 'v2 api'})
