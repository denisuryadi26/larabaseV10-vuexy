<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProfileRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'password' => 'min:6|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'min:6',
            'profile_picture' => 'required|mimes:jpeg,png,jpg,gif,svg',
            'phone_number' => 'required|string',
            'name' => 'required|string',
            'age' => 'required|integer|between:1,150',
            'gender' => 'required|in:MALE,FEMALE',
            'date_of_birth' => 'required|date_format:Y-m-d',
            'place_of_birth' => 'required|string',
            'religion' => 'required|in:ISLAM,PROTESTANT,KATOLIK,BUDHA,HINDU',
        ];
    }
}
