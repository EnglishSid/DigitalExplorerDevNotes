MATCH (pb:Playbook) SET pb.dxcOnly = false RETURN pb 
MATCH (x:`Workspace Note`) SET x:WorkspaceNote REMOVE x:`Workspace Note`