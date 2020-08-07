class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, to: :@template

  def label name, *args
    content_tag :div, class:"col-md-4" do
        super(name,options)
    end
  end

  def submit *args
    options = args.extract_options!
    extClass = "btn btnActivo"
    if options.has_key?(:class)
      options[:class] += extClass
    else
      options[:class] = extClass
    end
    content_tag :div, class:"col-md-12" do
      super(*args,options)
    end
  end

  [:date_select,:email_field, :password_field, :text_field, :number_field, :file_field].each do |metodo|
    define_method metodo do |name,*args|
      options = args.extract_options!
      extClass = "form-control"
      if options.has_key?(:class)
        options[:class] += extClass
      else
        options[:class] = extClass
      end
      puts name
      puts options
      content_tag :div, class:"col-md-8" do
        content_tag :div,class:"form-group" do
          super(name,options)
        end
      end
    end
  end

def select name,*args
  puts *args
  options = args.extract_options!
  puts name
  puts options.has_key?(:class)
  content_tag :div, class:"col-md-8" do
    content_tag :div,class:"form-group" do
      super(name,*args)
    end
  end
end



  [:check_box].each do |metodo|
    define_method metodo do |name,*args|

      content_tag :div, class:"col-md-4 text-right" do

          super(name,options)

      end
    end
  end




end
