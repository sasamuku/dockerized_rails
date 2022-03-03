Datadog.configure do |c|
    # This will activate auto-instrumentation for Rails
    c.use :rails, service_name: "datadog-tracing-test"
    c.tracer.enabled = true
    c.tracer.hostname = ENV['DD_AGENT_HOST']
    c.tracer.port = 8126
    c.diagnostics.debug = true
  end
