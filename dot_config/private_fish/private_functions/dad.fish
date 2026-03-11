function dad --wraps='aws-sso exec -p public-api-docs.tools:analytics-platform-engineer' --description 'alias dad=aws-sso exec -p public-api-docs.tools:analytics-platform-engineer'
  aws-sso exec -p public-api-docs.tools:analytics-platform-engineer $argv
        
end
