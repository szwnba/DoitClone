.class Lim/doit/pro/utils/SortUtils$2;
.super Ljava/lang/Object;
.source "SortUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/utils/SortUtils;->sortReminders(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lim/doit/pro/db/metadata/ReminderMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lim/doit/pro/db/metadata/ReminderMessage;Lim/doit/pro/db/metadata/ReminderMessage;)I
    .locals 5
    .param p1, "reminder1"    # Lim/doit/pro/db/metadata/ReminderMessage;
    .param p2, "reminder2"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 80
    iget-wide v0, p1, Lim/doit/pro/db/metadata/ReminderMessage;->reminderTime:J

    .line 81
    iget-wide v2, p2, Lim/doit/pro/db/metadata/ReminderMessage;->reminderTime:J

    const/4 v4, 0x0

    .line 80
    invoke-static {v0, v1, v2, v3, v4}, Lim/doit/pro/utils/SortUtils;->compareDate(JJZ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lim/doit/pro/db/metadata/ReminderMessage;

    check-cast p2, Lim/doit/pro/db/metadata/ReminderMessage;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/utils/SortUtils$2;->compare(Lim/doit/pro/db/metadata/ReminderMessage;Lim/doit/pro/db/metadata/ReminderMessage;)I

    move-result v0

    return v0
.end method
