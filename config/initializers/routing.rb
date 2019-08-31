class ActionDispatch::Routing::Mapper
  def draw_routes(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end
