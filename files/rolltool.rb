module MCollective
  module Agent
    class Service<RPC::Agent

      action 'roll' do
        login_cmd = "accurev login #{request[:login]} #{request[:password]}"
        clone_cmd = "accurev mkws -w #{request[:wsname]} -b #{request[:stream]} -l #{request[:path]}"
        logout_cmd = "accurev logout"
        `login_cmd`
        `clone_cmd`
        `logout_cmd`
      end

    end
  end
end
