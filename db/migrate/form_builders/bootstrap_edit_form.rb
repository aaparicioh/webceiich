class BootstrapEditForm < ActionView::Helpers::FormBuilder
  delegate :content_tag, to: :@template

  def label name, *args
    content_tag :div, class:"col-md-4" do
        super(name,options)
    end
  end

  def submit *args
    options = args.extract_options!
    extClass = "btn btn-primary"
    if options.has_key?(:class)
      options[:class] += extClass
    else
      options[:class] = extClass
    end
    content_tag :div, class:"col-md-12" do
      super(*args,options)
    end
  end

  def select name,*args

  end

  [:select].each do |metodo|
    define_method metodo do |name,*args|

      content_tag :div, class:"col-md-8" do
        content_tag :div,class:"form-group" do
          super(name,options)
        end
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
