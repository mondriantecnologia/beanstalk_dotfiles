#!/usr/bin/env bash

export RAILS_MASTER_KEY="545b...530";
export ENVIRONMENT=staging;
export RAILS_ENV=staging;
export DATABASE_HOST=yourdbhost.us-east-1.rds.amazonaws.com;
export DATABASE=dbname;
export DATABASE_USERNAME=username;
export DATABASE_PASSWORD=password;
export AWS_ACCESS_KEY_ID=your_aws_key;
export AWS_SECRET_ACCESS_KEY=your_aws_secret_key;

bundle install
rails db:migrate
git ls-files | zip app.zip -@

eb_deploy -p app.zip -e staging
