class Dissertation < ApplicationRecord
  
    belongs_to :user
    has_one_attached :pdf
<<<<<<< HEAD
    has_one_attached :review_pdf
=======
>>>>>>> 9d4a4227e0f5e8b35a63d9ae6cd5293ba455f68b

    validates :pdf, presence: true
    validate :user_has_no_other_dissertation
    
    after_commit :check_pdf_attachment, on: [:create, :update]

<<<<<<< HEAD
    def update_attachments(params)
      pdf.attach(params[:pdf]) if params[:pdf].present?
      review_pdf.attach(params[:review_pdf]) if params[:review_pdf].present?
    end

    private
    validate :validate_pdf_format

    def validate_pdf_format
      if pdf.attached? && !pdf.blob.content_type.in?(%w(application/pdf))
        errors.add(:pdf, 'Musisz wybrać plik w formacie PDF.')
      end
      if review_pdf.attached? && !pdf.blob.content_type.in?(%w(application/pdf))
        errors.add(:review_pdf, 'Musisz wybrać plik w formacie PDF.')
      end
    end

      def user_has_no_other_dissertation
        if user&.dissertations&.where.not(id: id)&.exists?
          errors.add(:user, 'Użytkownik już dodał inną pracę dyplomową.')
        end
      end

=======
    private

    def validate_pdf_format
        if pdf.attached? && !pdf.blob.content_type.in?(%w(application/pdf))
          errors.add(:pdf, 'Musisz wybrać plik w formacie PDF.')
        end
      end

    def user_has_no_other_dissertation
        if user&.dissertations&.exists?
          errors.add(:user, 'Użytkownik już dodał pracę dyplomową.')
        end
    end

>>>>>>> 9d4a4227e0f5e8b35a63d9ae6cd5293ba455f68b
    def check_pdf_attachment
        # Sprawdź, czy PDF został załączony po zapisaniu rekordu
        if pdf.attached? && pdf.attachment
          Rails.logger.debug("PDF attached? true")
        else
          Rails.logger.debug("PDF attached? false")
        end
      end
<<<<<<< HEAD

      
=======
>>>>>>> 9d4a4227e0f5e8b35a63d9ae6cd5293ba455f68b
end
