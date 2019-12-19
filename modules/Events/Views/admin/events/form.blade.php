<div class="form-group">
    <label>{{ __('Title')}}</label>
    <input type="text" value="{{ $translation->title ?? 'New Post' }}" placeholder="Event title" name="title" class="form-control">
</div>
<div class="form-group">
    <label>{!! 'Link event <strong>(Put full URL (with http:// or https://)</strong>' !!}</label>
    <input type="text" value="{{ $row->link ?? 'Link Event' }}" placeholder="Event link" name="link" class="form-control">
</div>
<div class="form-group">
    <label class="control-label">{{ __('Content')}} </label>
    <div class="">
        <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10">{{$translation->content}}</textarea>
    </div>
</div>
 