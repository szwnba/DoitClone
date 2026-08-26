.class public Lim/doit/pro/model/RepeaterDaily;
.super Ljava/lang/Object;
.source "RepeaterDaily.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5de61643f32551cL


# instance fields
.field private cycle:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatRepeater()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 30
    const v1, 0x7f0c00b4

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "result":Ljava/lang/String;
    iget v1, p0, Lim/doit/pro/model/RepeaterDaily;->cycle:I

    if-eq v1, v2, :cond_0

    .line 32
    const v1, 0x7f0c00b5

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lim/doit/pro/model/RepeaterDaily;->cycle:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lim/doit/pro/activity/utils/ViewUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    :cond_0
    return-object v0
.end method

.method public getCycle()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lim/doit/pro/model/RepeaterDaily;->cycle:I

    return v0
.end method

.method public isCheckDateValid(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "checkTime"    # Ljava/util/Calendar;
    .param p2, "startAtTime"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 37
    iget v2, p0, Lim/doit/pro/model/RepeaterDaily;->cycle:I

    if-ge v2, v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Lim/doit/pro/utils/DateUtils;->diffDay(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v2

    iget v3, p0, Lim/doit/pro/model/RepeaterDaily;->cycle:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public setCycle(I)V
    .locals 0
    .param p1, "cycle"    # I

    .prologue
    .line 26
    iput p1, p0, Lim/doit/pro/model/RepeaterDaily;->cycle:I

    .line 27
    return-void
.end method
