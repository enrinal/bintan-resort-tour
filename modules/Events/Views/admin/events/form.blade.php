<div class="form-group">
    <label>{{ __('Title')}}</label>
    <input type="text" value="{{ $translation->title ?? 'New Post' }}" placeholder="Event title" name="title" class="form-control">
</div>
<div class="form-group">
    <label>{{ __('Link Event')}}</label>
    <input type="text" value="{{ $translation->lang ?? 'Link Event' }}" placeholder="Event link" name="lang" class="form-control">
</div>
<div class="form-group">
    <label class="control-label">{{ __('Content')}} </label>
    <div class="">
        <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10">{{$translation->content}}</textarea>
    </div>
</div>
 