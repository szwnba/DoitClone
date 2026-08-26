.class final Lcom/crashlytics/android/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/F;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1869
    iput-object p2, p0, Lcom/crashlytics/android/P;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/crashlytics/android/P;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
