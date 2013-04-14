# Original source taken from the below site and modified.
# http://www.jacquesf.com/2011/03/creating-excerpts-in-jekyll-with-wordpress-style-more-html-comments/

module Jekyll
  module ExcerptFilter
    include Liquid::StandardFilters

    def excerpt(input)
      excerpt = ""

      if input.include?(BEGIN_EXCERPT) && input.include?(END_EXCERPT)
        excerpt = input.split(BEGIN_EXCERPT)[1].split(END_EXCERPT)[0]
      elsif input.include?(BEGIN_EXCERPT)
        excerpt = input.split(BEGIN_EXCERPT)[1]
      elsif input.include?(END_EXCERPT)
        excerpt = input.split(END_EXCERPT)[0]
      end

      strip_html excerpt
    end

    private

    BEGIN_EXCERPT = "<!--begin excerpt-->"
    END_EXCERPT="<!--end excerpt-->"
  end
end

Liquid::Template.register_filter(Jekyll::ExcerptFilter)

