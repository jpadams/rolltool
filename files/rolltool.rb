module MCollective
  module Agent
    class Rolltool<RPC::Agent

      action 'roll' do
	# some commands I used to debug while writing this      
        #login_cmd = 'echo "login complete" | cat > /tmp/foo'
	#user_cmd = "echo \"user=#{request[:user]}\" | cat >> /tmp/foo"
        #clone_cmd = 'echo "clone complete" | cat >> /tmp/foo' 
        #logout_cmd = 'echo "logout complete" | cat >> /tmp/foo' 
        login_cmd = "accurev login #{request[:user]} #{request[:password]}"
        clone_cmd = "accurev mkws -w #{request[:wsname]} -b #{request[:stream_snap]} -l #{request[:path]}"
        logout_cmd = "accurev logout"
        command = login_cmd + ';' + clone_cmd + ';' + logout_cmd 
	reply[:status] = run(command,:stdout => :out, :stderr => :err, :chomp => true)
      end

    end
  end
end
