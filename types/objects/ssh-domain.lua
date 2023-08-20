---@meta

---@class SshDomain
    /// The name of this specific domain.  Must be unique amongst
    /// all types of domain in the configuration file.
    #[dynamic(validate = "validate_domain_name")]
    pub name: String,

    /// identifies the host:port pair of the remote server.
    pub remote_address: String,

    /// Whether agent auth should be disabled
    #[dynamic(default)]
    pub no_agent_auth: bool,

    /// The username to use for authenticating with the remote host
    pub username: Option<String>,

    /// If true, connect to this domain automatically at startup
    #[dynamic(default)]
    pub connect_automatically: bool,

    #[dynamic(default = "default_read_timeout")]
    pub timeout: Duration,

    #[dynamic(default = "default_local_echo_threshold_ms")]
    pub local_echo_threshold_ms: Option<u64>,

    /// Show time since last response when waiting for a response.
    /// It is recommended to use
    /// <https://wezfurlong.org/wezterm/config/lua/pane/get_metadata.html#since_last_response_ms>
    /// instead.
    #[dynamic(default)]
    pub overlay_lag_indicator: bool,

    /// The path to the wezterm binary on the remote host
    pub remote_wezterm_path: Option<String>,

    pub ssh_backend: Option<SshBackend>,

    /// If false, then don't use a multiplexer connection,
    /// just connect directly using ssh. This doesn't require
    /// that the remote host have wezterm installed, and is equivalent
    /// to using `wezterm ssh` to connect.
    #[dynamic(default)]
    pub multiplexing: SshMultiplexing,

    /// ssh_config option values
    #[dynamic(default)]
    pub ssh_option: HashMap<String, String>,

    pub default_prog: Option<Vec<String>>,

    #[dynamic(default)]
    pub assume_shell: Shell,
