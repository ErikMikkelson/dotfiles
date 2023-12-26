{ options, config, lib, ... }:

with lib;
with lib.my;
let
  cfg = config.modules.services.prometheus;
  domain = "xn--berwachungsbehr-mtb1g.de";
in
{
  options.modules.services.prometheus = {
    enable = mkBoolOpt false;
  };

  config = mkIf cfg.enable {
    services.prometheus = {
      enable = true;
      webExternalUrl = "https://prometheus.${domain}";
      enableReload = true;
      exporters = {
        node = {
          enable = true;
          enabledCollectors = [ "systemd" ];
        };
      };
      scrapeConfigs = [
        {
          job_name = "node";
          static_configs = [{
            targets = [ "127.0.0.1:9100" "100.64.0.5:9100" ];
          }];
        }
        {
          job_name = "blackbox";
          static_configs = [{
            targets = [ "127.0.0.1:9115" "100.64.0.5:9115" ];
          }];
        }
        {
          job_name = "systemd";
          static_configs = [{
            targets = [ "127.0.0.1:9558" "100.64.0.5:9558" ];
          }];
        }
        {
          job_name = "statsd";
          static_configs = [{
            targets = [ "127.0.0.1:9102" "100.64.0.5:9102" ];
          }];
        }
        {
          job_name = "nginx";
          static_configs = [{
            targets = [ "100.64.0.5:9113" ];
          }];
        }
        {
          job_name = "nginxlog";
          static_configs = [{
            targets = [ "100.64.0.5:9117" ];
          }];
        }
        {
          job_name = "fail2ban";
          static_configs = [{
            targets = [ "100.64.0.5:9191" ];
          }];
        }
        {
          job_name = "ntfy";
          static_configs = [{
            targets = [ "100.64.0.5:9095" ];
          }];
        }
      ];
    };
  };
}
