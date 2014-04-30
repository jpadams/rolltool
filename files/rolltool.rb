module MCollective
  module Agent
    class Service<RPC::Agent

      action 'roll' do
        #login_cmd = "accurev login #{request[:login]} #{request[:password]}"
        login_cmd = 'echo "login complete" | cat > /tmp/foo'
        #clone_cmd = "accurev mkws -w #{request[:wsname]} -b #{request[:stream]} -l #{request[:path]}"
        clone_cmd = 'echo "clone complete" | cat >> /tmp/foo' 
        #logout_cmd = "accurev logout"
        logout_cmd = 'echo "logout complete" | cat >> /tmp/foo' 
        `login_cmd`
        `clone_cmd`
        `logout_cmd`
      end

    end
  end
end
