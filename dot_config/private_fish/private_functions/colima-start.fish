function colima-start --wraps='colima start --runtime containerd --kubernetes --cpu 2 --memory 4 --disk 100' --description 'alias colima-start=colima start --runtime containerd --kubernetes --cpu 2 --memory 4 --disk 100'
  colima start --runtime containerd --kubernetes --cpu 2 --memory 4 --disk 100 $argv
        
end
