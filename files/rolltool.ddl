metadata    :name        => "roll tool",
            :description => "Copy code from Accurev VCS to a server",
            :author      => "Jeremy Adams",
            :license     => "Apache 2.0",
            :version     => "1.0.0",
            :url         => "http://www.puppetlabs.com/",
            :timeout     => 60

action "roll", :description => "Copies code from Accurev VCS to a server" do
    display :always

    input :user,
          :prompt      => "User Name",
          :description => "Accurev user name",
          :type        => :string,
          :validation  => ".",
          :optional    => false,
          :maxlength   => 90

    input :password,
          :prompt      => "Password",
          :description => "Accurev password",
          :type        => :string,
          :validation  => ".",
          :optional    => false,
          :maxlength   => 90
    
    input :stream_snap,
          :prompt      => "Stream/Snapshot",
          :description => "The backing Accurev stream or snapshot",
          :type        => :string,
          :validation  => ".",
          :optional    => false,
          :maxlength   => 90

    input :path,
          :prompt      => "Path",
          :description => "The path on the remote server to check out code to",
          :type        => :string,
          :validation  => ".",
          :optional    => false,
          :maxlength   => 90

    output :status,
           :description => "The return value of the roll operation",
           :display_as  => "Roll Return Value",
           :default     => "unknown"

    summarize do
      aggregate summary(:status)
    end
end
