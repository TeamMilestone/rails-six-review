class AdminIndexGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)

  def generate_file
    template "index.html.erb", "app/views/#{plural_gen_path}/index.html.erb"
    template "_filter.html.erb", "app/views/#{plural_gen_path}/_filter.html.erb"
    template "_models.html.erb", "app/views/#{plural_gen_path}/_#{plural_model_name}.html.erb"
    template "_model.html.erb", "app/views/#{plural_gen_path}/_#{singular_model_name}.html.erb"
    template "_model_info.html.erb", "app/views/#{plural_gen_path}/_#{singular_model_name}_info.html.erb"
    template "show.html.erb", "app/views/#{plural_gen_path}/show.html.erb"

    template "edit.html.erb", "app/views/#{plural_gen_path}/edit.html.erb"
    template "new.html.erb", "app/views/#{plural_gen_path}/new.html.erb"
    template "_form.html.erb", "app/views/#{plural_gen_path}/_form.html.erb"

    template "controller.rb.erb", "app/controllers/#{plural_model_name}_controller.rb"
  end

  private

  def column_names
    names = [:name]
    not_model_class = Kernel.const_defined?(singular_model_camel_name) == false
    return names if not_model_class
    pp "#{singular_model_camel_name}"
    singular_model_camel_name.constantize.column_names.map!(&:to_sym) - [:created_at, :updated_at, :id]
  end

  def column_symbols
    column_names.map { |column| ":#{column}" }.join(", ")
  end

  def singular_model_name
    if singular_gen_path.include?("/")
      singular_gen_path.split("/").last
    else
      singular_gen_path
    end
  end

  def singular_model_name_capitalize
    singular_model_name.capitalize
  end

  def plural_model_name
    if plural_gen_path.include?("/")
      plural_gen_path.split("/").last
    else
      plural_gen_path
    end
  end

  def file_path
    if singular_gen_path.include?("/")
      namespace = singular_gen_path.split("/").first
      "#{namespace}_#{plural_model_name}_path"
    else
      "#{plural_model_name}_path"
    end
  end

  def singular_gen_path
    name.downcase.singularize
  end

  def plural_gen_path
    name.downcase.pluralize
  end

  def singular_model_camel_name
    singular_model_name.classify
  end

  def camel_controller_name
    name.classify.pluralize
  end

  def underscore_controller_name
    name.underscore.pluralize
  end

  def underscore_model_name
    underscored = name.underscore.singularize
    if underscored.include?("/")
      underscored.split("/").join("_")
    else
      underscored
    end
  end
end
