require "spec_helper"

describe Post do

  let(:post){ Factory.build(:post) }

  context "slug" do
    it "should be parameterized to be used in url's" do
      post.slug = "My SUper Awesóme Postã"
      post.save!
      post.slug.should == "my-super-awesome-posta"
    end

    describe "when doesn't have a custom slug" do
      it "should generate one when save" do
        post.slug.should be_nil
        post.save!
        post.slug.should_not be_nil
      end
    end

    describe "when have a custom slug" do
      it "should use the existing" do
        post.slug = "my-slug"
        post.save!
        post.slug.should == "my-slug"
      end
    end
  end

end
