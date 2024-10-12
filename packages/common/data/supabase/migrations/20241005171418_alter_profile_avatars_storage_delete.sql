CREATE POLICY "Allow delete own avatar" ON storage.objects FOR delete TO authenticated USING (
  (bucket_id = 'profile_avatars')
  AND (
    (
      SELECT
        auth.uid ()
    ) = objects.owner
  )
);
