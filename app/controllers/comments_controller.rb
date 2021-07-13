class CommentsController < ApplicationController
    belong_to :poi
    belong_to :user
end
