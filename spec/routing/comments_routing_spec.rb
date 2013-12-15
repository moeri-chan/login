require "spec_helper"

describe CommentsController do
  describe "routing" do

    it "routes to #index" do
      get("/posts/1/comments").should route_to("comments#index", :post_id => "1")
    end

    it "routes to #new" do
      get("/posts/1/comments/new").should route_to("comments#new", :post_id => "1")
    end

    it "routes to #show" do
      get("/comments/1").should route_to("comments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/comments/1/edit").should route_to("comments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posts/1/comments").should route_to("comments#create", :post_id => "1")
    end

    it "routes to #update" do
      put("/comments/1").should route_to("comments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/comments/1").should route_to("comments#destroy", :id => "1")
    end

  end
end
