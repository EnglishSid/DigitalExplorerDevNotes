match (pb:Playbook) where pb.order is null
set pb.order=0 