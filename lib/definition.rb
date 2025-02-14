class Definition
  @@definitions = []

  define_method(:initialize) do |definitions|
    @definitions = definitions
    @id = @@definitions.length().+(1)
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

  define_singleton_method(:find) do |identification|
    new_definition = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(identification.to_i())
        new_definition = definition
      end
    end
    new_definition
  end

end
