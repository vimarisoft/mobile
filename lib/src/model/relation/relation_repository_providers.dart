import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:lichess_mobile/src/model/user/user.dart';
import 'package:lichess_mobile/src/network/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'relation_repository.dart';

part 'relation_repository_providers.g.dart';

@riverpod
Future<IList<User>> following(FollowingRef ref) async {
  return ref.withClientCacheFor(
    (client) => RelationRepository(client).getFollowing(),
    const Duration(hours: 1),
  );
}
