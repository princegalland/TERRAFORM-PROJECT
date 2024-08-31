# Configuring A VPC Flow

 resource "aws_flow_log" "vpc1flow" {
    vpc_id = aws_vpc.vpc1.id
    traffic_type = "ALL"
    log_destination_type = "s3"

    log_destination = aws_s3_bucket.clinton12.arn
    
  tags = {
    Name = "vpc1flow"
  }
 }
