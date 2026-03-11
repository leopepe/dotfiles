function k8s-dev --wraps='aws-sso exec -p k8s.dev.eu-central-1:analytics-platform-engineer' --description 'alias k8s-dev=aws-sso exec -p k8s.dev.eu-central-1:analytics-platform-engineer'
    aws-sso exec -p k8s.dev.eu-central-1:analytics-platform-engineer $argv
end
