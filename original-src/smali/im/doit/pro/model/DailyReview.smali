.class public Lim/doit/pro/model/DailyReview;
.super Lim/doit/pro/model/BaseEntity;
.source "DailyReview.java"


# static fields
.field private static final serialVersionUID:J = 0x2d4c0adb24a38891L


# instance fields
.field private date:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private notes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rate:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private taskReviewInfos:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "task_review_info"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskReviewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lim/doit/pro/model/DailyReview;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lim/doit/pro/model/DailyReview;->notes:Ljava/lang/String;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lim/doit/pro/model/DailyReview;->rate:I

    return v0
.end method

.method public getTaskReviewInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskReviewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lim/doit/pro/model/DailyReview;->taskReviewInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lim/doit/pro/model/DailyReview;->rate:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lim/doit/pro/model/DailyReview;->notes:Ljava/lang/String;

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lim/doit/pro/model/DailyReview;->date:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lim/doit/pro/model/DailyReview;->notes:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .prologue
    .line 47
    iput p1, p0, Lim/doit/pro/model/DailyReview;->rate:I

    .line 48
    return-void
.end method

.method public setTaskReviewInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/TaskReviewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "taskReviewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/TaskReviewInfo;>;"
    iput-object p1, p0, Lim/doit/pro/model/DailyReview;->taskReviewInfos:Ljava/util/ArrayList;

    .line 56
    return-void
.end method
