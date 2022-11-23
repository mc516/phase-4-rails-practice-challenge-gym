class MembershipsController < ApplicationController
    def create
        new_membership = Membership.create(membership_params)
        if new_membership
            render json: new_membership, status: :created
        else
            render json: { error: "Invalid membership info"},status: :unprocessable_entity
        end
    end

    private
    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end
end
