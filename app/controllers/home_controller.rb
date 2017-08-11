class HomeController < ApplicationController

def student_home
end

def faculty_home
end

def search
  #@subjects = Subject.all
  #respond_to do |format|
  #if params[:search]
    #format.json { Subject.search(params[:search]).order("created_at DESC") }
 @subjects = Subject.search(params[:search]).to_json

  #else
    #format.json { :expected => Subject.all.order("created_at DESC") }
  #end
end
end
