kafka-cli
============

Modified example to run as Kubernetes pod for testing network connectivity:

Build

```
docker build -t kafka-cli .
```

Check

```
docker run -it kafka-cli /bin/bash
```

```
docker run -it kafka-cli  /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server host:9092 --topic test --from-beginning
```

Deploy in default names

```
kubectl apply -f kafka-cli.yml
```

And in knative-eventing:

```
kubectl apply -f kafka-cli-in-knative-eventing.yml
```
Run

```
kubectl exec -n knative-eventing -ti kafka-cli -- /opt/kafka/bin/kafka-console-consumer.sh --bootstrap-server host:9092 --topic test --from-beginning
```

And if more testing needed:

```
kubectl exec -n knative-eventing -ti kafka-cli -- /bin/bash
```