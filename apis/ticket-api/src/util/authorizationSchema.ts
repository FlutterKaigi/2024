import * as v from "valibot";

export const authorizationSchema = v.object({
	authorization: v.string(),
});
