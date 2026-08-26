.class public Lim/doit/pro/db/metadata/ContactTable$Columns;
.super Lim/doit/pro/db/metadata/DBaseColumns;
.source "ContactTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/db/metadata/ContactTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final AVATAR:Ljava/lang/String; = "avatar"

.field public static final AVATAR_ID:Ljava/lang/String; = "avatar_id"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final GROUP_BY:Ljava/lang/String; = "group_by"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTES:Ljava/lang/String; = "notes"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final POS:Ljava/lang/String; = "pos"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lim/doit/pro/db/metadata/DBaseColumns;-><init>()V

    return-void
.end method
