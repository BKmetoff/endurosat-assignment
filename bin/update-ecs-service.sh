echo "updating ECS service"
aws ecs update-service \
--cluster arn:aws:ecs:${REGION}:${ACCOUNT_ID}:cluster/${REPOSITORY}-${ENVIRONMENT} \
--service arn:aws:ecs:${REGION}:${ACCOUNT_ID}:service/${REPOSITORY}-${ENVIRONMENT}/${REPOSITORY}-${ENVIRONMENT}-service \
--force-new-deployment
