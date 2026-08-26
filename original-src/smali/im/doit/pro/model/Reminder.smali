.class public Lim/doit/pro/model/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final REMINDER_EMAIL:Ljava/lang/String; = "email"

.field public static final REMINDER_POPUP:Ljava/lang/String; = "popup"

.field public static final REMINDER_VIEW_ABSOLUTE:Ljava/lang/String; = "absolute"

.field public static final REMINDER_VIEW_RELATIVE:Ljava/lang/String; = "relative"

.field private static final serialVersionUID:J = 0x126f2b8848a59bdL


# instance fields
.field private mode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private time:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private view:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deepClone(I)Lim/doit/pro/model/Reminder;
    .locals 3
    .param p1, "diffDay"    # I

    .prologue
    .line 72
    new-instance v0, Lim/doit/pro/model/Reminder;

    invoke-direct {v0}, Lim/doit/pro/model/Reminder;-><init>()V

    .line 73
    .local v0, "reminder":Lim/doit/pro/model/Reminder;
    iget-object v1, p0, Lim/doit/pro/model/Reminder;->mode:Ljava/lang/String;

    iput-object v1, v0, Lim/doit/pro/model/Reminder;->mode:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lim/doit/pro/model/Reminder;->view:Ljava/lang/String;

    iput-object v1, v0, Lim/doit/pro/model/Reminder;->view:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lim/doit/pro/model/Reminder;->time:Ljava/util/Calendar;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lim/doit/pro/model/Reminder;->time:Ljava/util/Calendar;

    invoke-static {v1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, v0, Lim/doit/pro/model/Reminder;->time:Ljava/util/Calendar;

    .line 77
    iget-object v1, v0, Lim/doit/pro/model/Reminder;->time:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 79
    :cond_0
    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lim/doit/pro/model/Reminder;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lim/doit/pro/model/Reminder;->time:Ljava/util/Calendar;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lim/doit/pro/model/Reminder;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/model/Reminder;->view:Ljava/lang/String;

    return-object v0
.end method

.method public isRelative()Z
    .locals 2

    .prologue
    .line 65
    const-string v0, "relative"

    iget-object v1, p0, Lim/doit/pro/model/Reminder;->view:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 68
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lim/doit/pro/model/Reminder;->mode:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setTime(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "time"    # Ljava/util/Calendar;

    .prologue
    .line 53
    iput-object p1, p0, Lim/doit/pro/model/Reminder;->time:Ljava/util/Calendar;

    .line 54
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lim/doit/pro/model/Reminder;->uuid:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setView(Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lim/doit/pro/model/Reminder;->view:Ljava/lang/String;

    .line 62
    return-void
.end method
