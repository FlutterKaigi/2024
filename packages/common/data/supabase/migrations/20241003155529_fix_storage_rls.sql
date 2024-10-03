-- public bucketなのでSELECTのRLSは不要
DROP POLICY "Everyone can read sponsors bucket" ON storage.buckets;

DROP POLICY "Everyone can read staffs bucket" ON storage.buckets;

-- bucket_idの指定が抜けていたので追加
ALTER POLICY "Allow read their own avatar & admin can read all avatars" ON storage.objects USING (
  (bucket_id = 'profile_avatars')
  AND (
    (
      (
        SELECT
          auth.uid ()
      ) = objects.owner
    )
    OR (role () = 'admin'::role)
  )
);

ALTER POLICY "Allow update their own avatar" ON storage.objects USING (
  (bucket_id = 'profile_avatars')
  AND (
    (
      SELECT
        auth.uid ()
    ) = objects.owner
  )
);
