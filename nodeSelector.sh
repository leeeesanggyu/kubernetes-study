for i in {1..5};
do 
  kubectl run tree-app-$i\
  --labels="element=tree"\
  --image=yoonjeong/green-app:1.0\
  --port=8081\
  --overrides='{"spec":{"nodeSelector": {"SOIL": "moist"}}}'
done
