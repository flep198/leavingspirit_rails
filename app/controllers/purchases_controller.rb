class PurchasesController < InheritedResources::Base

  private

    def purchase_params
      params.require(:purchase).permit(:order_id,:product_id, :count)
    end

end