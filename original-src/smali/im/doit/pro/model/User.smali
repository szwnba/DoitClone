.class public Lim/doit/pro/model/User;
.super Lim/doit/pro/model/BaseEntity;
.source "User.java"


# static fields
.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field private static final serialVersionUID:J = 0x7d35bafbbfb9efb7L


# instance fields
.field private account:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private avatar:Landroid/graphics/Bitmap;

.field private avatarId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_id"
    .end annotation
.end field

.field private birthday:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private dailyPlanningTime:Ljava/lang/String;

.field private dailyPlanningTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dailyReviewTime:Ljava/lang/String;

.field private dailyReviewTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "date_format"
    .end annotation
.end field

.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private doitToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "doit_token"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private emailToTaskAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email_to_task_address"
    .end annotation
.end field

.field private evernote:Lim/doit/pro/model/Evernote;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
    .end annotation
.end field

.field private gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private googleCalendar:Ljava/lang/String;

.field private jsonEvernote:Ljava/lang/String;

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private lowerAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lower_account"
    .end annotation
.end field

.field private lowerEmail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lower_email"
    .end annotation
.end field

.field private lunchBreakEndTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lunch_break_end_time"
    .end annotation
.end field

.field private lunchBreakStartTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lunch_break_start_time"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private offset:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private payEndAt:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_end_at"
    .end annotation
.end field

.field private payStartAt:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_start_at"
    .end annotation
.end field

.field private payType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pay_type"
    .end annotation
.end field

.field private planReviewRemindOnWeekends:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "plan_review_remind_on_weekends"
    .end annotation
.end field

.field private provider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private remind:Ljava/lang/String;

.field private remindDailyPlan:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remind_daily_plan"
    .end annotation
.end field

.field private remindDailyReview:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remind_daily_review"
    .end annotation
.end field

.field private setting:Ljava/lang/String;

.field private timeFormat:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_format"
    .end annotation
.end field

.field private timezone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private weekStart:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "week_start"
    .end annotation
.end field

.field private weeklyReviewDay:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weekly_review_day"
    .end annotation
.end field

.field private weeklyReviewTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "weekly_review_time"
    .end annotation
.end field

.field private workingEndTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "working_end_time"
    .end annotation
.end field

.field private workingStartTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "working_start_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lim/doit/pro/model/User;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lim/doit/pro/model/User;->avatar:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAvatarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lim/doit/pro/model/User;->avatarId:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lim/doit/pro/model/User;->birthday:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDailyPlanningTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyPlanningTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyPlanningTimes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyPlanningTimes:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyPlanningTime:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lim/doit/pro/model/User;->dailyPlanningTime:Ljava/lang/String;

    const-class v2, Ljava/util/ArrayList;

    .line 311
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lim/doit/pro/model/User;->dailyPlanningTimes:Ljava/util/ArrayList;

    .line 314
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyPlanningTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDailyReviewTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyReviewTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyReviewTimes()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyReviewTimes:Ljava/util/ArrayList;

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyReviewTime:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->dailyReviewTime:Ljava/lang/String;

    .line 335
    const-class v2, Ljava/util/ArrayList;

    .line 334
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lim/doit/pro/model/User;->dailyReviewTimes:Ljava/util/ArrayList;

    .line 337
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/User;->dailyReviewTimes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lim/doit/pro/model/User;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lim/doit/pro/model/User;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDoitToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lim/doit/pro/model/User;->doitToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/model/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailToTaskAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lim/doit/pro/model/User;->emailToTaskAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEvernote()Lim/doit/pro/model/Evernote;
    .locals 3

    .prologue
    .line 438
    iget-object v0, p0, Lim/doit/pro/model/User;->jsonEvernote:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/User;->evernote:Lim/doit/pro/model/Evernote;

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->jsonEvernote:Ljava/lang/String;

    .line 440
    const-class v2, Lim/doit/pro/model/Evernote;

    .line 439
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Evernote;

    iput-object v0, p0, Lim/doit/pro/model/User;->evernote:Lim/doit/pro/model/Evernote;

    .line 442
    :cond_0
    iget-object v0, p0, Lim/doit/pro/model/User;->evernote:Lim/doit/pro/model/Evernote;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lim/doit/pro/model/User;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleCalendar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lim/doit/pro/model/User;->googleCalendar:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonEvernote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lim/doit/pro/model/User;->jsonEvernote:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lim/doit/pro/model/User;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLowerAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lim/doit/pro/model/User;->lowerAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getLowerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lim/doit/pro/model/User;->lowerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getLunchBreakEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lim/doit/pro/model/User;->lunchBreakEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLunchBreakStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lim/doit/pro/model/User;->lunchBreakStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lim/doit/pro/model/User;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lim/doit/pro/model/User;->offset:D

    return-wide v0
.end method

.method public getPayEndAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lim/doit/pro/model/User;->payEndAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getPayStartAt()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lim/doit/pro/model/User;->payStartAt:Ljava/util/Calendar;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lim/doit/pro/model/User;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lim/doit/pro/model/User;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRemind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lim/doit/pro/model/User;->remind:Ljava/lang/String;

    return-object v0
.end method

.method public getSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lim/doit/pro/model/User;->setting:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeFormat()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lim/doit/pro/model/User;->timeFormat:I

    return v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lim/doit/pro/model/User;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lim/doit/pro/model/User;->weekStart:Ljava/lang/String;

    return-object v0
.end method

.method public getWeeklyReviewDay()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lim/doit/pro/model/User;->weeklyReviewDay:I

    return v0
.end method

.method public getWeeklyReviewTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lim/doit/pro/model/User;->weeklyReviewTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lim/doit/pro/model/User;->workingEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lim/doit/pro/model/User;->workingStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public isPlanReviewRemindOnWeekends()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lim/doit/pro/model/User;->planReviewRemindOnWeekends:Z

    return v0
.end method

.method public isRemindDailyPlan()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lim/doit/pro/model/User;->remindDailyPlan:Z

    return v0
.end method

.method public isRemindDailyReview()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lim/doit/pro/model/User;->remindDailyReview:Z

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lim/doit/pro/model/User;->account:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setAvatar(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "avatar"    # Landroid/graphics/Bitmap;

    .prologue
    .line 409
    iput-object p1, p0, Lim/doit/pro/model/User;->avatar:Landroid/graphics/Bitmap;

    .line 410
    return-void
.end method

.method public setAvatarId(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarId"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lim/doit/pro/model/User;->avatarId:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setBirthday(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "birthday"    # Ljava/util/Calendar;

    .prologue
    .line 285
    iput-object p1, p0, Lim/doit/pro/model/User;->birthday:Ljava/util/Calendar;

    .line 286
    return-void
.end method

.method public setDailyPlanningTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "dailyPlanningTime"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lim/doit/pro/model/User;->dailyPlanningTime:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/User;->dailyPlanningTimes:Ljava/util/ArrayList;

    .line 320
    return-void
.end method

.method public setDailyReviewTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "dailyReviewTime"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lim/doit/pro/model/User;->dailyReviewTime:Ljava/lang/String;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/User;->dailyReviewTimes:Ljava/util/ArrayList;

    .line 329
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lim/doit/pro/model/User;->dateFormat:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 277
    iput-object p1, p0, Lim/doit/pro/model/User;->deleted:Ljava/util/Calendar;

    .line 278
    return-void
.end method

.method public setDoitToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "doitToken"    # Ljava/lang/String;

    .prologue
    .line 261
    iput-object p1, p0, Lim/doit/pro/model/User;->doitToken:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lim/doit/pro/model/User;->email:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setEmailToTaskAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailToTaskAddress"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lim/doit/pro/model/User;->emailToTaskAddress:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setEvernote(Lim/doit/pro/model/Evernote;)V
    .locals 1
    .param p1, "evernote"    # Lim/doit/pro/model/Evernote;

    .prologue
    .line 446
    iput-object p1, p0, Lim/doit/pro/model/User;->evernote:Lim/doit/pro/model/Evernote;

    .line 447
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/model/User;->jsonEvernote:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lim/doit/pro/model/User;->gender:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setGoogleCalendar(Ljava/lang/String;)V
    .locals 0
    .param p1, "googleCalendar"    # Ljava/lang/String;

    .prologue
    .line 253
    iput-object p1, p0, Lim/doit/pro/model/User;->googleCalendar:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setJsonEvernote(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonEvernote"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lim/doit/pro/model/User;->jsonEvernote:Ljava/lang/String;

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/model/User;->evernote:Lim/doit/pro/model/Evernote;

    .line 435
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lim/doit/pro/model/User;->language:Ljava/lang/String;

    .line 174
    return-void
.end method

.method public setLowerAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowerAccount"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lim/doit/pro/model/User;->lowerAccount:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setLowerEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "lowerEmail"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lim/doit/pro/model/User;->lowerEmail:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setLunchBreakEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lunchBreakEndTime"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lim/doit/pro/model/User;->lunchBreakEndTime:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setLunchBreakStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "lunchBreakStartTime"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lim/doit/pro/model/User;->lunchBreakStartTime:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lim/doit/pro/model/User;->nickname:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setOffset(D)V
    .locals 1
    .param p1, "offset"    # D

    .prologue
    .line 197
    iput-wide p1, p0, Lim/doit/pro/model/User;->offset:D

    .line 198
    return-void
.end method

.method public setPayEndAt(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "payEndAt"    # Ljava/util/Calendar;

    .prologue
    .line 221
    iput-object p1, p0, Lim/doit/pro/model/User;->payEndAt:Ljava/util/Calendar;

    .line 222
    return-void
.end method

.method public setPayStartAt(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "payStartAt"    # Ljava/util/Calendar;

    .prologue
    .line 213
    iput-object p1, p0, Lim/doit/pro/model/User;->payStartAt:Ljava/util/Calendar;

    .line 214
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "payType"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lim/doit/pro/model/User;->payType:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setPlanReviewRemindOnWeekends(Z)V
    .locals 0
    .param p1, "planReviewRemindOnWeekends"    # Z

    .prologue
    .line 393
    iput-boolean p1, p0, Lim/doit/pro/model/User;->planReviewRemindOnWeekends:Z

    .line 394
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lim/doit/pro/model/User;->provider:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setRemind(Ljava/lang/String;)V
    .locals 0
    .param p1, "remind"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lim/doit/pro/model/User;->remind:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setRemindDailyPlan(Z)V
    .locals 0
    .param p1, "remindDailyPlan"    # Z

    .prologue
    .line 293
    iput-boolean p1, p0, Lim/doit/pro/model/User;->remindDailyPlan:Z

    .line 294
    return-void
.end method

.method public setRemindDailyReview(Z)V
    .locals 0
    .param p1, "remindDailyReview"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lim/doit/pro/model/User;->remindDailyReview:Z

    .line 302
    return-void
.end method

.method public setSetting(Ljava/lang/String;)V
    .locals 0
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 425
    iput-object p1, p0, Lim/doit/pro/model/User;->setting:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setTimeFormat(I)V
    .locals 0
    .param p1, "timeFormat"    # I

    .prologue
    .line 237
    iput p1, p0, Lim/doit/pro/model/User;->timeFormat:I

    .line 238
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lim/doit/pro/model/User;->timezone:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setWeekStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "weekStart"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lim/doit/pro/model/User;->weekStart:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setWeeklyReviewDay(I)V
    .locals 0
    .param p1, "weeklyReviewDay"    # I

    .prologue
    .line 353
    iput p1, p0, Lim/doit/pro/model/User;->weeklyReviewDay:I

    .line 354
    return-void
.end method

.method public setWeeklyReviewTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "weeklyReviewTime"    # Ljava/lang/String;

    .prologue
    .line 345
    iput-object p1, p0, Lim/doit/pro/model/User;->weeklyReviewTime:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public setWorkingEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "workingEndTime"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lim/doit/pro/model/User;->workingEndTime:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setWorkingStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "workingStartTime"    # Ljava/lang/String;

    .prologue
    .line 361
    iput-object p1, p0, Lim/doit/pro/model/User;->workingStartTime:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User [email="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lim/doit/pro/model/User;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowerEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->lowerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    const-string v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lowerAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->lowerAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weekStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->weekStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    const-string v1, ", timezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/User;->offset:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 457
    const-string v1, ", payType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->payType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payStartAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->payStartAt:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    const-string v1, ", payEndAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->payEndAt:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailToTaskAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lim/doit/pro/model/User;->emailToTaskAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/model/User;->timeFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    const-string v1, ", dateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->dateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", doitToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->doitToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    const-string v1, ", provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->deleted:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    const-string v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->birthday:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remindDailyPlan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    iget-boolean v1, p0, Lim/doit/pro/model/User;->remindDailyPlan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remindDailyReview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/doit/pro/model/User;->remindDailyReview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    const-string v1, ", weeklyReviewTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->weeklyReviewTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 465
    const-string v1, ", weeklyReviewDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lim/doit/pro/model/User;->weeklyReviewDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 466
    const-string v1, ", workingStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->workingStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    const-string v1, ", workingEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->workingEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 468
    const-string v1, ", lunchBreakStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->lunchBreakStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 469
    const-string v1, ", lunchBreakEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->lunchBreakEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 470
    const-string v1, ", planReviewRemindOnWeekends="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lim/doit/pro/model/User;->planReviewRemindOnWeekends:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 471
    const-string v1, ", avatarId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->avatarId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", evernote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->jsonEvernote:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    const-string v1, ", dailyPlanningTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->dailyPlanningTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 473
    const-string v1, ", dailyReviewTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->dailyReviewTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", googleCalendar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 474
    iget-object v1, p0, Lim/doit/pro/model/User;->googleCalendar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->remind:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lim/doit/pro/model/User;->setting:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->avatar:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dailyPlanningTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lim/doit/pro/model/User;->dailyPlanningTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dailyReviewTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->dailyReviewTimes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", created="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/model/User;->created:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lim/doit/pro/model/User;->updated:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lim/doit/pro/model/User;->usn:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
