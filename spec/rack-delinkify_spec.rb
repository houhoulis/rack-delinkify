# require "/media/mystuff/dev/rack-delinkify/spec/support/github_page"

describe "RackDelinkify" do
  before(:all) do
    @github_page = IO.read("spec/support/github_page.html")
    @blog_page = IO.read("spec/support/blog_page.html")
    @test_page = %q{hi there
    }
    @pages = [ @github_page, @blog_page ]
  end

  context "setup" do
    example "blog_page loads and is long" do
      @blog_page.length.should be > 1000
    end

    example "github_page loads and is long" do
      @github_page.length.should be > 1000
    end

    example "test_page has correct content" do
      @test_page.include?("i th").should be_true
    end
  end

  context "with no whitelist" do

    xit "de-links but shows all link text" do
    end
    xit "obliterates all links" do
    end
    xit "preserves whitelisted links, shows others' text" do
    end
    xit "preserves whitelisted links, obliterates others" do
    end

    after(:all) do
#       @github_page.close
    end

  end
end
