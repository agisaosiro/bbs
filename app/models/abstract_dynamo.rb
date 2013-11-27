# -*- encoding: UTF-8 -*-
module AbstractDynamo

  def _prifix_dynamo(name)
    Rails.env + '_' + name
  end

  def dynamo_schema(name)
    dynamo_db = AWS::DynamoDB.new(
      :dynamo_db_endpoint => 'dynamodb.ap-northeast-1.amazonaws.com',
      :access_key_id => 'AKIAJQXMJPGSJLFIJIPQ',
      :secret_access_key => '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')
    dynamo_db.tables[_prifix_dynamo(name)].load_schema
  end

end
