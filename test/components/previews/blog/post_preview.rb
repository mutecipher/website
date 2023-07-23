class Blog::PostPreview < ViewComponent::Preview
  def default
    render(Blog::Post.new(post: post))
  end

  private

  def post
    Class.new do
      def title
        "Hello, World!"
      end

      def tags
        %w[Ruby Rails]
      end

      def body
        <<~MARKDOWN
                            
          Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla. Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus. 
                  
          Vivamus integer non suscipit taciti mus etiam at primis tempor sagittis sit, euismod libero facilisi aptent elementum felis blandit cursus gravida sociis erat ante, eleifend lectus nullam dapibus netus feugiat curae curabitur est ad. Massa curae fringilla porttitor quam sollicitudin iaculis aptent leo ligula euismod dictumst, orci penatibus mauris eros etiam praesent erat volutpat posuere hac. Metus fringilla nec ullamcorper odio aliquam lacinia conubia mauris tempor, etiam ultricies proin quisque lectus sociis id tristique, integer phasellus taciti pretium adipiscing tortor sagittis ligula.[^1]
                  
          ## Section
                  
          Mollis pretium lorem primis senectus habitasse lectus scelerisque donec, ultricies tortor suspendisse adipiscing fusce morbi volutpat pellentesque, consectetur mi risus molestie curae malesuada cum. Dignissim lacus convallis massa mauris enim ad mattis magnis senectus montes, mollis taciti phasellus accumsan bibendum semper blandit suspendisse faucibus nibh est, metus lobortis morbi cras magna vivamus per risus fermentum. Dapibus imperdiet praesent magnis ridiculus congue gravida curabitur dictum sagittis, enim et magna sit inceptos sodales parturient pharetra mollis, aenean vel nostra tellus commodo pretium sapien sociosqu.
          
          ![Image](https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png)
          
          Lorem ipsum dolor sit amet consectetur adipiscing elit mattis sociis consequat dui, sagittis himenaeos duis tempus suspendisse ut porta egestas inceptos suscipit proin, mi litora convallis auctor rhoncus per at est libero laoreet. Nisl consequat iaculis commodo sagittis arcu nullam posuere accumsan molestie sociis sit id, at volutpat curabitur ligula ultrices luctus tristique cras quis fames vel nascetur auctor, duis tempor et porttitor nisi nostra habitant imperdiet rutrum phasellus dui. 
          
          * List item 1
          * List item 2
          * List item 3
          
          Est volutpat condimentum etiam eros taciti auctor, tristique at dictum sociis egestas velit diam, facilisis nisi turpis porta faucibus. Sed mauris senectus accumsan lectus magnis habitant praesent vel convallis enim per odio ipsum, libero ultricies erat curabitur ligula quis placerat quisque ridiculus nibh augue tempus. 

          ```ruby
          class Foo
            def bar
              puts "Hello, World!"
            end
          end
          ```
          
          Fames morbi tincidunt nunc porta imperdiet taciti viverra dolor curae tempor lacinia aliquet, semper nullam nostra pellentesque duis montes lectus gravida curabitur elit dignissim neque, commodo sagittis ligula litora bibendum sociosqu dapibus turpis varius lorem ipsum. Arcu nec etiam curae rhoncus leo bibendum in nunc maecenas, feugiat senectus tempus integer lobortis nam duis dictum, ipsum egestas urna id ad porttitor massa sagittis. Sociosqu sollicitudin erat aliquam volutpat curabitur orci, cursus nunc mus mollis. 
          
          Dui etiam ad non porttitor per sit nostra at condimentum augue nullam, odio conubia proin vehicula eget eu aliquam ultrices hendrerit varius, vivamus ante magnis nam sapien phasellus nec tempus semper sociis. Sociosqu praesent non turpis cursus pulvinar, tincidunt himenaeos dignissim fusce curae morbi, mauris dictum congue tempus. Consectetur cubilia ac euismod aenean dui urna convallis aliquet nunc, mi accumsan sagittis venenatis posuere phasellus feugiat etiam, justo cras odio lorem magna montes dictumst vestibulum.

          ```javascript
          export default function foo() {
            console.log("Hello, World!");
          }
          ```

          ## Section

          Est volutpat condimentum etiam eros taciti auctor, tristique at dictum sociis egestas velit diam, facilisis nisi turpis porta faucibus. Sed mauris senectus accumsan lectus magnis habitant praesent vel convallis enim per odio ipsum, libero ultricies erat curabitur ligula quis placerat quisque ridiculus nibh augue tempus. 

          [^1]: This is a footnote.
        MARKDOWN
      end

      def created_at
        Time.zone.now
      end
    end.new
  end
end
