class Submission < ApplicationRecord
    mount_uploader :submission_image, SubmissionImageUploader
    mount_uploader :submission_video, SubmissionVideoUploader

    belongs_to :user

    validates :title, presence: true
    validates :body, length: {minimum:4, maximum:8000}
    validates :url, url: true, allow_blank: true
    
    
end
