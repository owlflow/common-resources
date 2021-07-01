## Deploy tasks ##################################################################

ifndef STAGE
STAGE = dev
endif

release-deploy:
	@echo "Deploying $(organisation_name) $(project_name) to AWS Lambda $(stage)"
	$(if $(CI), npm install serverless -g)
	npm install serverless-domain-manager
	serverless create_domain --stage $(STAGE) --verbose
	serverless deploy --stage $(STAGE) --verbose
