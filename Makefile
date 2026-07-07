argocd_server = $(shell kubectl get svc argo-argocd-server -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
argocd_password = $(shell kubectl get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d)

argo-deploy:
	git pull
	aws eks update-kubeconfig --name wmp-dev


	argocd login $(argocd_server) \
		--insecure \
		--username admin \
		--password $(argocd_password) \
	argocd app create auth-service \
		--repo https://github.com/Wealth-Management-Project-v1/helm-v1.git \
		--path . \
		--revision main \
		--dest-server https://kubernetes.default.svc \
		--dest-namespace default \
		--sync-policy auto \
		--values values/auth-service.yaml \
		--helm-set-string image_tag=$(image_tag)